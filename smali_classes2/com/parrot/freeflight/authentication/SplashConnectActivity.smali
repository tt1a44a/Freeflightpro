.class public Lcom/parrot/freeflight/authentication/SplashConnectActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashConnectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/authentication/SplashConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v5, 0x7f0c0022

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->setContentView(I)V

    .line 32
    const v5, 0x7f0a0445

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 33
    .local v4, "textConnectTitle":Landroid/widget/TextView;
    const v5, 0x7f0a0444

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, "textConnectSubtitle":Landroid/widget/TextView;
    const v5, 0x7f0a0062

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "buttonConnectNow":Landroid/widget/Button;
    const v5, 0x7f0a00c7

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 36
    .local v2, "buttonWhyConnect":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setPaintFlags(I)V

    .line 38
    const v5, 0x7f0a0061

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, "buttonConnectLater":Landroid/widget/Button;
    const/4 v5, 0x3

    invoke-static {p0, v4, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 41
    const/4 v5, 0x1

    invoke-static {p0, v3, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 42
    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    new-instance v5, Lcom/parrot/freeflight/authentication/SplashConnectActivity$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/authentication/SplashConnectActivity$1;-><init>(Lcom/parrot/freeflight/authentication/SplashConnectActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v5, Lcom/parrot/freeflight/authentication/SplashConnectActivity$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/authentication/SplashConnectActivity$2;-><init>(Lcom/parrot/freeflight/authentication/SplashConnectActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v5, Lcom/parrot/freeflight/authentication/SplashConnectActivity$3;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/authentication/SplashConnectActivity$3;-><init>(Lcom/parrot/freeflight/authentication/SplashConnectActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
