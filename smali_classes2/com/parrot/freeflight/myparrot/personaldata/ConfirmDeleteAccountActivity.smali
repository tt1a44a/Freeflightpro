.class public Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ConfirmDeleteAccountActivity.java"


# instance fields
.field private deleteAccountButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->onConfirmDeleteClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->deleteAccountButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private onConfirmDeleteClicked()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->deleteAccountButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 63
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->requestAccountDeletion(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f0c001d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f0a032e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->deleteAccountButton:Landroid/widget/Button;

    .line 41
    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->deleteAccountButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$1;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f0a032d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$2;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
