.class public Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WhatsNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_VERSION_INFO:Ljava/lang/String; = "EXTRA_VERSION_INFO"


# instance fields
.field private mPagerAdapter:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/freeflight/whatsnew/model/Version;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Lcom/parrot/freeflight/whatsnew/model/Version;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_VERSION_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_VERSION_INFO"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/whatsnew/model/Version;

    .line 48
    .local v2, "version":Lcom/parrot/freeflight/whatsnew/model/Version;
    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 53
    :cond_0
    const v4, 0x7f0c005f

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->setContentView(I)V

    .line 55
    const v4, 0x7f0a02da

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mRootLayout:Landroid/view/View;

    .line 56
    const v4, 0x7f0a052b

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 57
    const v4, 0x7f0a0530

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/view/ViewPagerIndicator;

    .line 58
    .local v3, "viewPagerIndicator":Lcom/parrot/freeflight/view/ViewPagerIndicator;
    new-instance v4, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mPagerAdapter:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;

    .line 59
    iget-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mPagerAdapter:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->setVersion(Lcom/parrot/freeflight/whatsnew/model/Version;)V

    .line 61
    iget-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mPagerAdapter:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$1;-><init>(Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 82
    iget-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mPagerAdapter:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 84
    const v4, 0x7f0a04cc

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "title":Landroid/widget/TextView;
    const v4, 0x7f0a0053

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 86
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$2;-><init>(Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 95
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 98
    iget-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v5, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$3;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$3;-><init>(Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 105
    iget-object v4, v2, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->addToKnownVersions(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
