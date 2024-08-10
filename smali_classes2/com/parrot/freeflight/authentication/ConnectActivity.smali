.class public Lcom/parrot/freeflight/authentication/ConnectActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ConnectActivity.java"


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

    const-class v1, Lcom/parrot/freeflight/authentication/ConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v10, 0x7f0c0021

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->setContentView(I)V

    .line 32
    const v10, 0x7f0a0062

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, "buttonConnectNow":Landroid/widget/Button;
    const v10, 0x7f0a0053

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 34
    .local v0, "buttonBack":Landroid/widget/ImageButton;
    const v10, 0x7f0a04c9

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    .local v2, "textConnectTitle":Landroid/widget/TextView;
    const v10, 0x7f0a04df

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 36
    .local v3, "textWhyRegisterReason1":Landroid/widget/TextView;
    const v10, 0x7f0a04e0

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 37
    .local v4, "textWhyRegisterReason2":Landroid/widget/TextView;
    const v10, 0x7f0a04e1

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 38
    .local v5, "textWhyRegisterReason3":Landroid/widget/TextView;
    const v10, 0x7f0a04e2

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 39
    .local v6, "textWhyRegisterReason4":Landroid/widget/TextView;
    const v10, 0x7f0a04e3

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 40
    .local v7, "textWhyRegisterReason5":Landroid/widget/TextView;
    const v10, 0x7f0a04e4

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 41
    .local v8, "textWhyRegisterReason6":Landroid/widget/TextView;
    const v10, 0x7f0a04e5

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/authentication/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 43
    .local v9, "textWhyRegisterReason7":Landroid/widget/TextView;
    const/4 v10, 0x3

    invoke-static {p0, v2, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 44
    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 48
    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 49
    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    invoke-static {p0, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 52
    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    new-instance v10, Lcom/parrot/freeflight/authentication/ConnectActivity$1;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/authentication/ConnectActivity$1;-><init>(Lcom/parrot/freeflight/authentication/ConnectActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v10, Lcom/parrot/freeflight/authentication/ConnectActivity$2;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/authentication/ConnectActivity$2;-><init>(Lcom/parrot/freeflight/authentication/ConnectActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
