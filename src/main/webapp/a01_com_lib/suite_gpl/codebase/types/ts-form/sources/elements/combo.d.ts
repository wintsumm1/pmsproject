import { Combobox } from "../../../ts-combobox";
import { IEventSystem } from "../../../ts-common/events";
import { Label } from "./helper/label";
import { IComboConfig, ItemEvent, IComboEventHandlersMap, ICombo, IComboProps } from "../types";
export declare class Combo extends Label implements ICombo {
    config: IComboConfig;
    combobox: Combobox;
    events: IEventSystem<ItemEvent, IComboEventHandlersMap>;
    private _isValid;
    private _propsItem;
    private _propsCombo;
    private _props;
    constructor(container: any, config: IComboConfig);
    destructor(): void;
    setProperties(propertyConfig: IComboProps): void;
    getProperties(): IComboProps;
    show(): void;
    hide(init?: boolean): void;
    isVisible(): boolean;
    disable(): void;
    enable(): void;
    isDisabled(): boolean;
    clear(): void;
    getValue(): string | string[];
    setValue(value: string | string[]): void;
    validate(silent?: boolean, validateValue?: string | string[]): boolean;
    clearValidate(): void;
    getWidget(): Combobox;
    focus(): void;
    blur(): void;
    protected _initView(config: IComboConfig): void;
    protected _initHandlers(): void;
    protected _validationStatus(): any;
    protected _getRootView(): any;
    protected _draw(): any;
    private _exsistData;
    private _getItemText;
}