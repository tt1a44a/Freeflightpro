.class public Lcom/parrot/freeflight/utils/ephemeris/EphemerisSyncable;
.super Ljava/lang/Object;
.source "EphemerisSyncable.java"

# interfaces
.implements Lcom/parrot/freeflight/util/sync/ISyncable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-static {p1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->isEphemerisDownloadNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->downloadGPSEphemeris(Landroid/content/Context;)Z

    move-result v0

    .line 15
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
