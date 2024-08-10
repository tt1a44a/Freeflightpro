.class public Lcom/parrot/freeflight/piloting/preference/JoystickState;
.super Ljava/lang/Object;
.source "JoystickState.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# instance fields
.field private final mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJoystickSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLeftHanded:Z

.field private mPilotingControllerType:I

.field private mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 23
    invoke-interface {p2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    .line 25
    return-void
.end method


# virtual methods
.method public getControllerType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mPilotingControllerType:I

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 70
    :cond_0
    return v0
.end method

.method public isLeftHanded()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mLeftHanded:Z

    return v0
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultPilotingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultLeftHandness()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setLeftHanded(Z)V

    .line 62
    return-void
.end method

.method public setControllerType(I)V
    .locals 2
    .param p1, "controllerType"    # I

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mPilotingControllerType:I

    if-eq v0, p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 34
    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :cond_0
    return-void
.end method

.method public setLeftHanded(Z)V
    .locals 2
    .param p1, "leftHanded"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mLeftHanded:Z

    if-eq v0, p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 46
    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultPilotingType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mPilotingControllerType:I

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 55
    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultLeftHandness()Z

    move-result v2

    .line 54
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mLeftHanded:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 57
    return-void
.end method
