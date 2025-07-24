-- Drop the existing restrictive policy
DROP POLICY IF EXISTS "Allow authenticated users to insert mosques" ON public.mosques;

-- Create a more permissive policy that allows anonymous users to insert
CREATE POLICY "Allow anyone to insert mosques" ON public.mosques
    FOR INSERT WITH CHECK (true);

-- Also allow anonymous users to update (optional, for editing)
DROP POLICY IF EXISTS "Allow users to update their own mosques" ON public.mosques;
CREATE POLICY "Allow anyone to update mosques" ON public.mosques
    FOR UPDATE USING (true);

-- Allow anonymous users to delete (optional)
DROP POLICY IF EXISTS "Allow users to delete their own mosques" ON public.mosques;
CREATE POLICY "Allow anyone to delete mosques" ON public.mosques
    FOR DELETE USING (true);