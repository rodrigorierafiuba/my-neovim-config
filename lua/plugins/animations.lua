return {
    {
        "sphamba/smear-cursor.nvim",
        opts = {
            smear_between_buffers = true,
            smear_between_neighbor_lines = true,
            scroll_buffer_space = true,
            smear_insert_mode = true,

            -- Movimiento suave, sin hacerlo exageradamente lento
            stiffness = 0.8,
            trailing_stiffness = 0.5,
            damping = 0.8,
        },
    },
}
