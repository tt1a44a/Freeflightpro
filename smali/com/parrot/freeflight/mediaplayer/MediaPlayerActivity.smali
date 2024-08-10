.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_MEDIAS:Ljava/lang/String; = "medias key"

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position key"


# instance fields
.field private mMediaAdapter:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

.field private mMediaInfos:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaViewPager:Landroid/support/v4/view/ViewPager;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPosition:I

.field private mUploadButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/freeflight/core/academy/MediaInfos;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaInfos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "medias key"

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "position key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    return-object v0
.end method

.method public static getStartingIntent(Landroid/content/Context;Ljava/util/ArrayList;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "mediaInfosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "medias key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "position key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v2, 0x7f0c0047

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->setContentView(I)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v2, "medias key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    .line 77
    const-string/jumbo v2, "position key"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    .line 84
    :goto_0
    const v2, 0x7f0a035b

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    .line 85
    new-instance v2, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaAdapter:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

    .line 86
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaAdapter:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 88
    const v2, 0x7f0a0090

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 89
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$2;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v2, 0x7f0a0091

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    .line 97
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 113
    return-void

    .line 79
    .end local v0    # "backButton":Landroid/widget/ImageButton;
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "medias key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    .line 81
    const-string/jumbo v2, "position key"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string v0, "medias key"

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    const-string/jumbo v0, "position key"

    iget v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method
