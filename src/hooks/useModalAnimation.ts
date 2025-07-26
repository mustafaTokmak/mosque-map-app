import { useState, useEffect } from 'react';

interface UseModalAnimationProps {
  isOpen: boolean;
  onClose: () => void;
  animationDuration?: number;
}

export const useModalAnimation = ({ 
  isOpen, 
  onClose, 
  animationDuration = 250 
}: UseModalAnimationProps) => {
  const [isVisible, setIsVisible] = useState(isOpen);
  const [isClosing, setIsClosing] = useState(false);

  useEffect(() => {
    if (isOpen) {
      setIsVisible(true);
      setIsClosing(false);
    } else if (isVisible) {
      setIsClosing(true);
      const timer = setTimeout(() => {
        setIsVisible(false);
        setIsClosing(false);
      }, animationDuration);
      return () => clearTimeout(timer);
    }
  }, [isOpen, isVisible, animationDuration]);

  const handleClose = () => {
    onClose();
  };

  return {
    isVisible,
    isClosing,
    handleClose,
  };
};