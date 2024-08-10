.class public Lcom/parrot/freeflight/piloting/preference/FixedWingJoystickPreferences;
.super Ljava/lang/Object;
.source "FixedWingJoystickPreferences.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;


# static fields
.field private static final LEFT_HAND_KEY:Ljava/lang/String; = "left_hand"

.field private static final PILOTING_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "fixed_wing_js_pref"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultLeftHandness()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPilotingType()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    return v0
.end method

.method public getLeftHandnessPreferenceKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    const-string v0, "left_hand"

    return-object v0
.end method

.method public getPilotingTypePreferenceKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    const-string v0, "type"

    return-object v0
.end method

.method public getSharedPreferencesKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 16
    const-string v0, "fixed_wing_js_pref"

    return-object v0
.end method
