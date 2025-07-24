import React, { useState } from 'react';
import { useAuth } from '../hooks/useAuth';

interface AuthModalProps {
  isOpen: boolean;
  onClose: () => void;
}

const AuthModal: React.FC<AuthModalProps> = ({ isOpen, onClose }) => {
  const [isSignUp, setIsSignUp] = useState(false);
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const { signIn, signUp, signInAnonymously, error, clearError } = useAuth();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsLoading(true);
    clearError();

    try {
      if (isSignUp) {
        await signUp(email, password);
        alert('Check your email for verification link!');
      } else {
        await signIn(email, password);
      }
      onClose();
    } catch (err) {
      console.error('Auth error:', err);
    } finally {
      setIsLoading(false);
    }
  };

  const handleAnonymousSignIn = async () => {
    setIsLoading(true);
    try {
      await signInAnonymously();
      onClose();
    } catch (err) {
      console.error('Anonymous sign in error:', err);
    } finally {
      setIsLoading(false);
    }
  };

  if (!isOpen) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <div className="modal-header">
          <h2>{isSignUp ? 'Sign Up' : 'Sign In'}</h2>
          <button className="close-btn" onClick={onClose}>×</button>
        </div>

        <div style={{ padding: '20px' }}>
          <form onSubmit={handleSubmit}>
            <div className="form-group">
              <label htmlFor="email">Email</label>
              <input
                type="email"
                id="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                disabled={isLoading}
              />
            </div>

            <div className="form-group">
              <label htmlFor="password">Password</label>
              <input
                type="password"
                id="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                disabled={isLoading}
                minLength={6}
              />
            </div>

            {error && (
              <div style={{ color: 'red', marginBottom: '16px', fontSize: '0.875rem' }}>
                {error}
              </div>
            )}

            <div className="form-actions">
              <button 
                type="button" 
                onClick={() => setIsSignUp(!isSignUp)}
                className="btn-cancel"
                disabled={isLoading}
              >
                {isSignUp ? 'Already have account?' : 'Need an account?'}
              </button>
              <button 
                type="submit" 
                className="btn-submit"
                disabled={isLoading}
              >
                {isLoading ? 'Loading...' : (isSignUp ? 'Sign Up' : 'Sign In')}
              </button>
            </div>
          </form>

          <div style={{ textAlign: 'center', margin: '20px 0' }}>
            <div style={{ borderTop: '1px solid #e5e7eb', position: 'relative', marginBottom: '16px' }}>
              <span style={{ 
                position: 'absolute', 
                top: '-10px', 
                left: '50%', 
                transform: 'translateX(-50%)', 
                background: 'white', 
                padding: '0 12px',
                color: '#6b7280',
                fontSize: '0.875rem'
              }}>
                or
              </span>
            </div>
            <button 
              onClick={handleAnonymousSignIn}
              disabled={isLoading}
              style={{
                background: '#f59e0b',
                color: 'white',
                border: 'none',
                padding: '12px 24px',
                borderRadius: '8px',
                cursor: 'pointer',
                fontSize: '16px',
                fontWeight: '600'
              }}
            >
              Continue as Guest
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AuthModal;