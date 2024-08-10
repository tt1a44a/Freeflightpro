.class public Lcom/parrot/freeflight/update/UpdaterActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UpdaterActivity.java"


# static fields
.field private static final CONTROLLER_TAG:Ljava/lang/String; = "controller"


# instance fields
.field private mUiController:Lcom/parrot/freeflight/update/UpdaterUiController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/UpdaterActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterActivity;->closeActivity(Z)V

    return-void
.end method

.method private closeActivity(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterActivity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->finish()V

    .line 61
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStartingIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/update/UpdaterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterActivity;->closeActivity(Z)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 31
    .local v6, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v0, "controller"

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/update/UpdaterController;

    .line 32
    .local v3, "controller":Lcom/parrot/freeflight/update/UpdaterController;
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 33
    .local v7, "intent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 34
    new-instance v3, Lcom/parrot/freeflight/update/UpdaterController;

    .end local v3    # "controller":Lcom/parrot/freeflight/update/UpdaterController;
    invoke-direct {v3}, Lcom/parrot/freeflight/update/UpdaterController;-><init>()V

    .line 35
    .restart local v3    # "controller":Lcom/parrot/freeflight/update/UpdaterController;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/update/UpdaterController;->setArguments(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "controller"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 38
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/parrot/freeflight/update/UpdaterActivity$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/update/UpdaterActivity$1;-><init>(Lcom/parrot/freeflight/update/UpdaterActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/update/UpdaterUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterActivity;->mUiController:Lcom/parrot/freeflight/update/UpdaterUiController;

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterActivity;->mUiController:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->destroy()V

    .line 49
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 50
    return-void
.end method
