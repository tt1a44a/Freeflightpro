.class public Lcom/parrot/freeflight/about/LegalMentionsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LegalMentionsActivity.java"


# static fields
.field private static final COUNTRY_PREFIX:Ljava/lang/String; = "-r"

.field private static final DEFAULT_URL:Ljava/lang/String;

.field public static final EXTRA_IS_FROM_SPLASH_SCREEN:Ljava/lang/String; = "is_from_splash_screen"

.field private static final FILE_BASE:Ljava/lang/String; = "legal_mentions/legals_mentions-"

.field private static final FILE_EXT:Ljava/lang/String; = ".html"

.field private static final LEGALS_MENTIONS_VERSION:Ljava/lang/String; = "5.2"

.field public static final PREFS_LEGALS_MENTIONS_ACCEPTED:Ljava/lang/String; = "legal_mentions_accepted_5.2"

.field public static final SHARED_PREFERENCES_LEGALS_MENTIONS_NAME:Ljava/lang/String; = "legal_mentions_shared_preferences"

.field private static final URL_BASE:Ljava/lang/String; = "file:///android_asset/"


# instance fields
.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/legal_mentions/legals_mentions-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->DEFAULT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/about/LegalMentionsActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "lang":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "legal_mentions/legals_mentions-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "url":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 133
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///android_asset/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 138
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 128
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "legal_mentions/legals_mentions-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 138
    sget-object v3, Lcom/parrot/freeflight/about/LegalMentionsActivity;->DEFAULT_URL:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v8, 0x7f0c0043

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->setContentView(I)V

    .line 46
    const v8, 0x7f0a029b

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mRootView:Landroid/view/View;

    .line 47
    new-instance v8, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 48
    iget-object v8, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v9, Lcom/parrot/freeflight/about/LegalMentionsActivity$1;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$1;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 55
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 56
    .local v4, "isFromSplashScreen":Z
    if-eqz v3, :cond_0

    .line 57
    const-string v8, "is_from_splash_screen"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 59
    :cond_0
    const v8, 0x7f0a0487

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "acceptButton":Landroid/widget/TextView;
    const v8, 0x7f0a0488

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 62
    .local v5, "refuseButton":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 65
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 66
    new-instance v8, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    new-instance v8, Lcom/parrot/freeflight/about/LegalMentionsActivity$3;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$3;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :goto_0
    const v8, 0x7f0a02dd

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 106
    .local v7, "webview":Landroid/webkit/WebView;
    invoke-direct {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v7, v10}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 108
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;

    move-result-object v2

    .line 109
    .local v2, "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 110
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 112
    const v8, 0x7f07050e

    iget-object v9, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mRootView:Landroid/view/View;

    iget v10, v6, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;II)V

    .line 113
    return-void

    .line 89
    .end local v2    # "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    .end local v6    # "size":Landroid/graphics/Point;
    .end local v7    # "webview":Landroid/webkit/WebView;
    :cond_1
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const v8, 0x7f0a01fa

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 94
    .local v1, "backButton":Landroid/widget/ImageButton;
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 96
    new-instance v8, Lcom/parrot/freeflight/about/LegalMentionsActivity$4;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$4;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 150
    return-void
.end method
