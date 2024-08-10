.class public Lcom/parrot/freeflight/piloting/preference/InterfacePreference;
.super Ljava/lang/Object;
.source "InterfacePreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# static fields
.field public static final HAND_LAUNCH_KEY:Ljava/lang/String; = "hand_launch"

.field public static final MAP_TYPE_KEY:Ljava/lang/String; = "map_type"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "preset_interface_pref"

.field public static final SHOW_FRAMING_GRID_KEY:Ljava/lang/String; = "show_framing_grid"

.field public static final SHOW_MAP_KEY:Ljava/lang/String; = "show_map"


# instance fields
.field private final mInterfaceSharedPreferences:Landroid/content/SharedPreferences;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "preset_interface_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method


# virtual methods
.method public getFramingGridEnabled()Z
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_framing_grid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHandLaunchEnabled()Z
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hand_launch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMapType()I
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "map_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMiniMapVisibility()I
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_map"

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
    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

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
    .line 78
    const-string/jumbo v0, "show_map"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "map_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hand_launch"

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "show_framing_grid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setMiniMapVisibility(I)V

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setMapType(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setHandLaunchEnabled(Z)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setFramingGridEnabled(Z)V

    .line 68
    return-void
.end method

.method public setFramingGridEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_framing_grid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method

.method public setHandLaunchEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hand_launch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    return-void
.end method

.method public setMapType(I)V
    .locals 2
    .param p1, "presetMode"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "map_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void
.end method

.method public setMiniMapVisibility(I)V
    .locals 2
    .param p1, "presetMode"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->mInterfaceSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_map"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method
