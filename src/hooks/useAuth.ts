import { useState, useEffect } from 'react';
import { User, Session, AuthError, AuthChangeEvent } from '@supabase/supabase-js';
import { supabase } from '../lib/supabase';

export const useAuth = () => {
  const [user, setUser] = useState<User | null>(null);
  const [session, setSession] = useState<Session | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    // Get initial session
    const getInitialSession = async () => {
      try {
        const { data: { session }, error } = await supabase.auth.getSession();
        if (error) throw error;
        
        setSession(session);
        setUser(session?.user ?? null);
      } catch (err) {
        console.error('Error getting session:', err);
        setError(err instanceof Error ? err.message : 'Failed to get session');
      } finally {
        setIsLoading(false);
      }
    };

    getInitialSession();

    // Listen for auth changes
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange(async (event: AuthChangeEvent, session: Session | null) => {
      console.log('Auth state changed:', event, session);
      setSession(session);
      setUser(session?.user ?? null);
      setIsLoading(false);
      
      if (event === 'SIGNED_OUT') {
        setError(null);
      }
    });

    return () => subscription?.unsubscribe();
  }, []);

  // Sign up with email and password
  const signUp = async (email: string, password: string) => {
    try {
      setIsLoading(true);
      setError(null);

      const { data, error } = await supabase.auth.signUp({
        email,
        password,
      });

      if (error) throw error;

      return data;
    } catch (err) {
      const errorMessage = err instanceof AuthError ? err.message : 'Failed to sign up';
      setError(errorMessage);
      throw new Error(errorMessage);
    } finally {
      setIsLoading(false);
    }
  };

  // Sign in with email and password
  const signIn = async (email: string, password: string) => {
    try {
      setIsLoading(true);
      setError(null);

      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (error) throw error;

      return data;
    } catch (err) {
      const errorMessage = err instanceof AuthError ? err.message : 'Failed to sign in';
      setError(errorMessage);
      throw new Error(errorMessage);
    } finally {
      setIsLoading(false);
    }
  };

  // Sign in anonymously (guest mode)
  const signInAnonymously = async () => {
    try {
      setIsLoading(true);
      setError(null);

      const { data, error } = await supabase.auth.signInAnonymously();

      if (error) throw error;

      return data;
    } catch (err) {
      const errorMessage = err instanceof AuthError ? err.message : 'Failed to sign in anonymously';
      setError(errorMessage);
      throw new Error(errorMessage);
    } finally {
      setIsLoading(false);
    }
  };

  // Sign out
  const signOut = async () => {
    try {
      setIsLoading(true);
      setError(null);

      const { error } = await supabase.auth.signOut();

      if (error) throw error;
    } catch (err) {
      const errorMessage = err instanceof AuthError ? err.message : 'Failed to sign out';
      setError(errorMessage);
      throw new Error(errorMessage);
    } finally {
      setIsLoading(false);
    }
  };

  // Reset password
  const resetPassword = async (email: string) => {
    try {
      setError(null);

      const { error } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo: `${window.location.origin}/reset-password`,
      });

      if (error) throw error;

      return { success: true };
    } catch (err) {
      const errorMessage = err instanceof AuthError ? err.message : 'Failed to reset password';
      setError(errorMessage);
      throw new Error(errorMessage);
    }
  };

  // Update password
  const updatePassword = async (newPassword: string) => {
    try {
      setError(null);

      const { error } = await supabase.auth.updateUser({
        password: newPassword,
      });

      if (error) throw error;

      return { success: true };
    } catch (err) {
      const errorMessage = err instanceof AuthError ? err.message : 'Failed to update password';
      setError(errorMessage);
      throw new Error(errorMessage);
    }
  };

  const clearError = () => setError(null);

  return {
    user,
    session,
    isLoading,
    error,
    isAuthenticated: !!user,
    signUp,
    signIn,
    signInAnonymously,
    signOut,
    resetPassword,
    updatePassword,
    clearError,
  };
};