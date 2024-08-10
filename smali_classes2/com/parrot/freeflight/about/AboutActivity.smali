.class public Lcom/parrot/freeflight/about/AboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutActivity.java"


# instance fields
.field private mLegalMentionsButton:Landroid/widget/Button;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/about/AboutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/about/AboutActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/about/AboutActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v4, 0x7f0c001b

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/about/AboutActivity;->setContentView(I)V

    .line 31
    const v4, 0x7f0a025a

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/about/AboutActivity;->mRootView:Landroid/view/View;

    .line 32
    const v4, 0x7f0a0050

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 33
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v4, 0x7f0a04eb

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    .local v2, "titleTextView":Landroid/widget/TextView;
    const v4, 0x7f0a04ec

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, "versionTextView":Landroid/widget/TextView;
    const v4, 0x7f0a0051

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    .line 37
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 38
    iget-object v4, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v5, Lcom/parrot/freeflight/about/AboutActivity$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/about/AboutActivity$1;-><init>(Lcom/parrot/freeflight/about/AboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 46
    :try_start_0
    const-string v4, "%s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f1103b7

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/about/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f1103b8

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/about/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 47
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/parrot/freeflight/about/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 46
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 56
    iget-object v4, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 59
    new-instance v4, Lcom/parrot/freeflight/about/AboutActivity$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/about/AboutActivity$2;-><init>(Lcom/parrot/freeflight/about/AboutActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v4, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    new-instance v5, Lcom/parrot/freeflight/about/AboutActivity$3;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/about/AboutActivity$3;-><init>(Lcom/parrot/freeflight/about/AboutActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 86
    return-void
.end method
