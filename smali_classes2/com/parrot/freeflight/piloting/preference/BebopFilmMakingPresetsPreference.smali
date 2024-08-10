.class public Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;
.super Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;
.source "BebopFilmMakingPresetsPreference.java"


# static fields
.field private static final PREFS_BEBOP_PILOTING:Ljava/lang/String; = "PREFS_BEBOP_PILOTING_FILM_MAKING"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDefaultBankedTurn()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultMaxRotationSpeed()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xd

    return v0
.end method

.method public getDefaultMaxTilt()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x8

    return v0
.end method

.method public getDefaultMaxTiltSpeed()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x50

    return v0
.end method

.method public getDefaultMaxVerticalSpeed()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public getRecommendedMaxRotationSpeed()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x14

    return v0
.end method

.method public getRecommendedMaxTilt()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xf

    return v0
.end method

.method public getRecommendedMaxTiltSpeed()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x64

    return v0
.end method

.method public getRecommendedMaxVerticalSpeed()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x4

    return v0
.end method

.method protected getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "PREFS_BEBOP_PILOTING_FILM_MAKING"

    return-object v0
.end method
