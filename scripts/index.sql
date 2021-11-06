create trigger tg_audit_emp
after INSERT or UPDATE or DELETE on employees
for each row
begin
    if inserting then
        insere_audit(systimestamp,'I','EMPLOYEES','APP',null,null,null,:new.employee_id,resgata_usuario());
    end if;
    if deleting then
        insere_audit(systimestamp,'D','EMPLOYEES','APP',null,null,null,:old.employee_id,resgata_usuario());
    end if;
    if updating then
        if(:old.first_name <> :new.first_name) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','FIRST_NAME',:old.first_name,:new.first_name,:new.employee_id,resgata_usuario());
        end if;
        if(:old.last_name <> :new.last_name) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','LAST_NAME',:old.last_name,:new.last_name,:new.employee_id,resgata_usuario());
        end if;
        if(:old.email <> :new.email) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','EMAIL',:old.email,:new.email,:new.employee_id,resgata_usuario());
        end if;
        if(:old.phone_number <> :new.phone_number) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','PHONE_NUMBER',:old.phone_number,:new.phone_number,:new.employee_id,resgata_usuario());
        end if;
        if(:old.hire_date <> :new.hire_date) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','HIRE_DATE',:old.hire_date,:new.hire_date,:new.employee_id,resgata_usuario());
        end if;
        if(:old.job_id <> :new.job_id) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','JOB_ID',:old.job_id,:new.job_id,:new.employee_id,resgata_usuario());
        end if;
        if(:old.salary <> :new.salary) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','SALARY',:old.salary,:new.salary,:new.employee_id,resgata_usuario());
        end if;
        if((:old.commission_pct is null and :new.commission_pct is not null) or (:old.commission_pct is not null and :new.commission_pct is null) or (:old.commission_pct <> :new.commission_pct)) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','COMMISSION_PCT',:old.commission_pct,:new.commission_pct,:new.employee_id,resgata_usuario());
        end if;
        if(:old.manager_id <> :new.manager_id) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','MANAGER_ID',:old.manager_id,:new.manager_id,:new.employee_id,resgata_usuario());
        end if;
        if(:old.department_id <> :new.department_id) then
            insere_audit(systimestamp,'U','EMPLOYEES','APP','DEPARTMENT_ID',:old.department_id,:new.department_id,:new.employee_id,resgata_usuario());
        end if;
    end if;
end;
/