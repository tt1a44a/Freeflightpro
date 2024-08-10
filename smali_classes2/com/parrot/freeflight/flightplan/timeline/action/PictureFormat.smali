.class public final enum Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
.super Ljava/lang/Enum;
.source "PictureFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field public static final enum FORMAT_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field public static final enum FORMAT_RAW:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field public static final enum FORMAT_RAW_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field public static final enum FORMAT_SNAPSHOT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field public static final enum FORMAT_UNKNOWN:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field private static final SIMILAR_RESOLUTION_DELTA:F = 0.001f


# instance fields
.field private final mFormatName:Ljava/lang/String;

.field private final mMaxFps:F

.field private final mResolution:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const v9, 0x3e25294b

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    const-string v1, "FORMAT_UNKNOWN"

    const v3, 0x104000e

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;-><init>(Ljava/lang/String;IIFF)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_UNKNOWN:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 11
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    const-string v4, "FORMAT_RAW"

    const v6, 0x7f110242

    const/high16 v7, 0x3e000000    # 0.125f

    const/high16 v8, 0x41600000    # 14.0f

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;-><init>(Ljava/lang/String;IIFF)V

    sput-object v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 12
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    const-string v4, "FORMAT_JPEG"

    const v6, 0x7f11023d

    const v8, 0x4149539c

    move v5, v11

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;-><init>(Ljava/lang/String;IIFF)V

    sput-object v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 13
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    const-string v4, "FORMAT_SNAPSHOT"

    const/4 v5, 0x3

    const v6, 0x7f110244

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x38e27e0f    # 1.08E-4f

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;-><init>(Ljava/lang/String;IIFF)V

    sput-object v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_SNAPSHOT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 14
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    const-string v4, "FORMAT_RAW_JPEG"

    const/4 v5, 0x4

    const v6, 0x7f11023e

    const v8, 0x4159999a    # 13.6f

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;-><init>(Ljava/lang/String;IIFF)V

    sput-object v3, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_UNKNOWN:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    aput-object v1, v0, v11

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_SNAPSHOT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->$VALUES:[Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "nameRes"    # I
    .param p4, "maxFps"    # F
    .param p5, "resolution"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mFormatName:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mMaxFps:F

    .line 25
    iput p5, p0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mResolution:F

    .line 26
    return-void
.end method

.method public static getFormat(F)Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    .locals 7
    .param p0, "resolution"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_UNKNOWN:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 57
    .local v0, "retVal":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    invoke-static {}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->values()[Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 58
    .local v1, "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    sget-object v5, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_UNKNOWN:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    if-eq v1, v5, :cond_0

    iget v5, v1, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mResolution:F

    sub-float v5, p0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 62
    .end local v1    # "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    :goto_1
    return-object v1

    .line 57
    .restart local v1    # "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    :cond_1
    move-object v1, v0

    .line 62
    goto :goto_1
.end method

.method public static getFormat(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_UNKNOWN:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    .line 45
    .local v0, "retVal":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    invoke-static {}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->values()[Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 46
    .local v1, "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormatName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    .end local v1    # "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    :goto_1
    return-object v1

    .line 45
    .restart local v1    # "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "state":Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    :cond_1
    move-object v1, v0

    .line 50
    goto :goto_1
.end method

.method public static getFormatArray()[Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    iget-object v2, v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mFormatName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    iget-object v2, v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mFormatName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_SNAPSHOT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    iget-object v2, v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mFormatName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW_JPEG:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    iget-object v2, v2, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mFormatName:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->$VALUES:[Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mFormatName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFps()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mMaxFps:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->mResolution:F

    return v0
.end method
