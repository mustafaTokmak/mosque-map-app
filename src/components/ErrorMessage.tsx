import React from 'react';

interface ErrorMessageProps {
  message: string;
  onRetry?: () => void;
  onDismiss?: () => void;
}

const ErrorMessage: React.FC<ErrorMessageProps> = ({ 
  message, 
  onRetry, 
  onDismiss 
}) => {
  return (
    <div className="error-container">
      <div className="error-content">
        <div className="error-icon">⚠️</div>
        <div className="error-text">
          <h4>Something went wrong</h4>
          <p>{message}</p>
        </div>
        <div className="error-actions">
          {onRetry && (
            <button onClick={onRetry} className="error-retry-btn">
              Try Again
            </button>
          )}
          {onDismiss && (
            <button onClick={onDismiss} className="error-dismiss-btn">
              Dismiss
            </button>
          )}
        </div>
      </div>
    </div>
  );
};

export default ErrorMessage;