export interface ScheckPayload {
    id: string;
    waehrung: string;
    betrag: number;
    iban: string;
    praefix: string;
    worstCaseSolarIndex: number;
}
export declare class GPCBClearingEngine {
    private static secretKey;
    private static bufferToHex;
    static generiereAxiomatischenHash(payload: ScheckPayload): Promise<string>;
    static validiereIbanISO13616(iban: string): boolean;
    static verifiziereUndAktualisiere(): Promise<void>;
}
//# sourceMappingURL=app.d.ts.map