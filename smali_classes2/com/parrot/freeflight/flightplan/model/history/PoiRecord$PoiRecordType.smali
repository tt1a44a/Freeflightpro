.class public final enum Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
.super Ljava/lang/Enum;
.source "PoiRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PoiRecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

.field public static final enum POI_ADD:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

.field public static final enum POI_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

.field public static final enum POI_LATLON:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

.field public static final enum POI_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    const-string v1, "POI_ADD"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ADD:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    .line 23
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    const-string v1, "POI_REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    .line 25
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    const-string v1, "POI_ALTITUDE"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    .line 26
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    const-string v1, "POI_LATLON"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_LATLON:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ADD:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_LATLON:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->$VALUES:[Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->$VALUES:[Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    return-object v0
.end method
