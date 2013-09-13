private "_delay";

// Adiciona a fila de execução.
groo_var_execQueue = groo_var_execQueue + 1;

// Define delay para a execução.
 _delay = ((groo_var_execQueue) * groo_param_queueFactor) - groo_param_queueFactor;

// Atrasa a execução
 if (_delay > 0) then {sleep _delay;};

// Remove da fila de execução.
groo_var_execQueue = groo_var_execQueue - 1;


