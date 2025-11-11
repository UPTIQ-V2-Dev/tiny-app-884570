import { useState } from 'react';
import { Button } from './components/ui/button';

export const App = () => {
    const [count, setCount] = useState(0);

    return (
        <div className="h-screen w-screen flex flex-col items-center justify-center bg-background text-foreground">
            <div className="text-center flex flex-col gap-6">
                <h1 className="text-4xl font-bold">Welcome to React 19!</h1>
                <p className="text-muted-foreground">The smallest possible app</p>
                <div className="flex flex-col gap-4">
                    <Button 
                        onClick={() => setCount(count + 1)}
                        className="px-8 py-2"
                    >
                        Clicked {count} times
                    </Button>
                </div>
            </div>
        </div>
    );
};
