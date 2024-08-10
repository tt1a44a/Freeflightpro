.class public Lcom/parrot/freeflight/authentication/WhyConnectActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WhyConnectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/authentication/WhyConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v9, 0x7f0c0023

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->setContentView(I)V

    .line 30
    const v9, 0x7f0a0053

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 31
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v9, 0x7f0a04de

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, "textWhyRegister":Landroid/widget/TextView;
    const v9, 0x7f0a04df

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    .local v2, "textWhyRegisterReason1":Landroid/widget/TextView;
    const v9, 0x7f0a04e0

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, "textWhyRegisterReason2":Landroid/widget/TextView;
    const v9, 0x7f0a04e1

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 35
    .local v4, "textWhyRegisterReason3":Landroid/widget/TextView;
    const v9, 0x7f0a04e2

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 36
    .local v5, "textWhyRegisterReason4":Landroid/widget/TextView;
    const v9, 0x7f0a04e3

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 37
    .local v6, "textWhyRegisterReason5":Landroid/widget/TextView;
    const v9, 0x7f0a04e4

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 38
    .local v7, "textWhyRegisterReason6":Landroid/widget/TextView;
    const v9, 0x7f0a04e5

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 40
    .local v8, "textWhyRegisterReason7":Landroid/widget/TextView;
    const/4 v9, 0x3

    invoke-static {p0, v1, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 41
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    invoke-static {p0, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 49
    new-instance v9, Lcom/parrot/freeflight/authentication/WhyConnectActivity$1;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/authentication/WhyConnectActivity$1;-><init>(Lcom/parrot/freeflight/authentication/WhyConnectActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
