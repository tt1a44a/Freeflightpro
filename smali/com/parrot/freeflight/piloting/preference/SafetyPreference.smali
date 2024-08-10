.class public Lcom/parrot/freeflight/piloting/preference/SafetyPreference;
.super Ljava/lang/Object;
.source "SafetyPreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# static fields
.field public static final MAX_ALTITUDE_KEY:Ljava/lang/String; = "max_altitude"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "safety_pref"


# instance fields
.field private final mSafetySharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "safety_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->mSafetySharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public getMaxAltitude()F
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->mSafetySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "max_altitude"

    sget-object v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->mSafetySharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    const-string v0, "max_altitude"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->setMaxAltitude(F)V

    .line 32
    return-void
.end method

.method public setMaxAltitude(F)V
    .locals 2
    .param p1, "max"    # F

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->mSafetySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_altitude"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    return-void
.end method
