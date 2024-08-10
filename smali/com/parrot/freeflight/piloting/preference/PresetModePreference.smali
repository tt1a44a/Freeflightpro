.class public Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
.super Ljava/lang/Object;
.source "PresetModePreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/preference/PresetModePreference$PresetMode;
    }
.end annotation


# static fields
.field public static final PRESET_MODE_KEY:Ljava/lang/String; = "preset_mode"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "preset_mode_pref"


# instance fields
.field private final mPresetModeSharedPreferences:Landroid/content/SharedPreferences;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "preset_mode_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->mPresetModeSharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method


# virtual methods
.method public getPresetMode()I
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->mPresetModeSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "preset_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->mPresetModeSharedPreferences:Landroid/content/SharedPreferences;

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
    .line 57
    const-string/jumbo v0, "preset_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->setPresetMode(I)V

    .line 47
    return-void
.end method

.method public setPresetMode(I)V
    .locals 2
    .param p1, "presetMode"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->mPresetModeSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "preset_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method public switchMode()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 42
    .local v0, "newViewMode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->setPresetMode(I)V

    .line 43
    return-void

    .line 41
    .end local v0    # "newViewMode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
