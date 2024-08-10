.class public Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DataConfidentialityActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;


# instance fields
.field private authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

.field dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

.field newslettersView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

.field private productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    .line 20
    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->newslettersView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->applyUITheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->newslettersView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->applyUITheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 113
    return-void
.end method

.method private initView(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;IIIZLcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;)V
    .locals 1
    .param p1, "view"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;
    .param p2, "titleId"    # I
    .param p3, "subtitleId"    # I
    .param p4, "descId"    # I
    .param p5, "checked"    # Z
    .param p6, "listener"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->setTitle(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->setSubtitle(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p4}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->setDescription(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p5}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->setChecked(Z)V

    .line 122
    invoke-virtual {p1, p6}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->setListener(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onAuthenticationChanged()V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    .line 128
    .local v0, "isAuthenticated":Z
    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->rootView:Landroid/view/View;

    .line 40
    const v0, 0x7f0a032b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    .line 41
    const v0, 0x7f0a032c

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->newslettersView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    .line 43
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$1;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->addListener(Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;)V

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    const v2, 0x7f11049e

    const v3, 0x7f11049d

    const v4, 0x7f11049c

    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 58
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isDataSharingAllowed()Z

    move-result v5

    new-instance v6, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$2;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V

    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->initView(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;IIIZLcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->setDataManagementListener(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->newslettersView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    const v2, 0x7f1104a0

    const v3, 0x7f110145

    const v4, 0x7f11049f

    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 84
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->areNewslettersAllowed()Z

    move-result v5

    new-instance v6, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$4;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$4;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V

    move-object v0, p0

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->initView(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;IIIZLcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;)V

    .line 92
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$5;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->removeListener(Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;)V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 106
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 107
    return-void
.end method
