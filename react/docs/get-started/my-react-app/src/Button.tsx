import React, { useState } from "react"

type what  = "leo" | "oliveira" //this is a union type
type status = "idle" | "loading" | "success" | "error"
type RequestState =
    | { status: 'idle' }
    | { status: 'loading' }
    | { status: 'success', data: string }
    | { status: 'error', err: Error }

type RandomProps = {
    title: string;
    children: React.ReactNode
    styles: React.CSSProperties
}

export default function Button({ color, children }: { color: string, styles: React.CSSProperties, children?: React.ReactElement }) {
    const [status, setStatus] = useState<RequestState>({ status: "success", data: "test" })

    return (
       <>
        <button onClick={() => setStatus({ status: "success", data: "data" })}>I am a button { color }</button>
        <p>status value: { status.status }</p>

        <div>{children}</div>
       </>
    )
}