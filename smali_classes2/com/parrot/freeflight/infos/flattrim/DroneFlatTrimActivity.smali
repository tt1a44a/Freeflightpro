.class public Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DroneFlatTrimActivity.java"


# instance fields
.field private mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->onBackPressed()Z

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->setContentView(I)V

    .line 23
    new-instance v0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    .line 24
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->destroy()V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->pause()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->resume()V

    .line 36
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->start()V

    .line 30
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->stop()V

    .line 48
    return-void
.end method
