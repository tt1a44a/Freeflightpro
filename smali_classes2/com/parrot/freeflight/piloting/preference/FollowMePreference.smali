.class public Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
.super Ljava/lang/Object;
.source "FollowMePreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# static fields
.field private static final FIRST_USE_KEY:Ljava/lang/String; = "follow_me_first_use"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "follow_me_preferences"

.field private static final SHOW_ON_ERROR_KEY:Ljava/lang/String; = "show_on_error"

.field private static sFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;


# instance fields
.field private final mFollowMePreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "follow_me_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->mFollowMePreferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    sget-object v0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->sFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->sFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    .line 23
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->sFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    return-object v0
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->mFollowMePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getShowOnError()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->mFollowMePreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_on_error"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstUse()Z
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->mFollowMePreferences:Landroid/content/SharedPreferences;

    const-string v1, "follow_me_first_use"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
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
    .line 54
    const-string v0, "show_on_error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFirstUse(Z)V
    .locals 2
    .param p1, "firstUse"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->mFollowMePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "follow_me_first_use"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method

.method public setShowOnError(Z)V
    .locals 2
    .param p1, "showOnError"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->mFollowMePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_on_error"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method
