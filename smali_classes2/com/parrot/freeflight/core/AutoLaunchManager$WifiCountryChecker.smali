.class Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;
.super Lcom/parrot/freeflight/core/AutoLaunchChecker;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCountryChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/AutoLaunchManager$1;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    return-void
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/parrot/freeflight/start/CountryChoiceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    return-object v0
.end method

.method public getLaunchType(Landroid/app/Activity;)I
    .locals 1
    .param p1, "currentActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 450
    instance-of v0, p1, Lcom/parrot/freeflight/start/CountryChoiceActivity;

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x2

    .line 453
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchType(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public setNeedAutoLaunch(Z)V
    .locals 1
    .param p1, "needAutoLaunch"    # Z

    .prologue
    .line 443
    invoke-super {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setNeedAutoLaunch(Z)V

    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->setCondition(Z)V

    .line 445
    return-void
.end method
