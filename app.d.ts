interface ScheckPayload {
    id: string;
    waehrung: string;
    betrag: number;
    iban: string;
    praefix: string;
    worstCaseSolarIndex: number;
}
export declare class GPCBClearingEngine {
    private secretKey;
    constructor();
    generiereAxiomatischenHash(payload: ScheckPayload): string;
    validiereIbanISO13616(iban: string): boolean;
}
export {};
//# sourceMappingURL=app.d.ts.map