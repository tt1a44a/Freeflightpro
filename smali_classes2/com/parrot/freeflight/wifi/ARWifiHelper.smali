.class public Lcom/parrot/freeflight/wifi/ARWifiHelper;
.super Ljava/lang/Object;
.source "ARWifiHelper.java"


# static fields
.field private static final DOUBLE_QUOTES:Ljava/lang/String; = "\""

.field private static final MAX_RSSI:I = -0x3e

.field private static final MIN_RSSI:I = -0x5c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDoubleQuotesToSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateSignalLevel(II)I
    .locals 4
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 14
    const/4 v2, 0x0

    .line 15
    .local v2, "retval":I
    const/16 v3, -0x5c

    if-gt p0, v3, :cond_0

    .line 17
    const/4 v2, 0x0

    .line 30
    :goto_0
    return v2

    .line 19
    :cond_0
    const/16 v3, -0x3e

    if-lt p0, v3, :cond_1

    .line 21
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 25
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 26
    .local v0, "inputRange":F
    add-int/lit8 v3, p1, -0x1

    int-to-float v1, v3

    .line 27
    .local v1, "outputRange":F
    add-int/lit8 v3, p0, 0x5c

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v2, v3

    goto :goto_0
.end method
