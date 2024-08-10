.class public Lcom/parrot/freeflight/flightplan/utils/LoadState;
.super Ljava/lang/Object;
.source "LoadState.java"


# static fields
.field private static final FIRST_LOAD_KEY:Ljava/lang/String; = "is_first_load"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "flightplan_load_state_preferences"


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "flightplan_load_state_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/utils/LoadState;->mPreferences:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public isFirstLoad()Z
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/utils/LoadState;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_first_load"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoadedOnce()V
    .locals 3

    .prologue
    .line 23
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/utils/LoadState;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_first_load"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method
