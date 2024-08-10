.class public Lcom/parrot/freeflight/media/MediaSizeUtils;
.super Ljava/lang/Object;
.source "MediaSizeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSizeText(D)Ljava/lang/String;
    .locals 10
    .param p0, "convertedValue"    # D
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 9
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "bytes"

    aput-object v2, v1, v6

    const-string v2, "KB"

    aput-object v2, v1, v7

    const-string v2, "MB"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TB"

    aput-object v3, v1, v2

    .line 10
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 11
    .local v0, "multiplyFactor":I
    :goto_0
    cmpl-double v2, p0, v4

    if-lez v2, :cond_0

    .line 13
    div-double/2addr p0, v4

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%4.2f%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    aget-object v5, v1, v0

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
