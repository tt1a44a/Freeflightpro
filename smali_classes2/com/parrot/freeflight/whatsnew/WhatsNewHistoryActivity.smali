.class public Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WhatsNewHistoryActivity.java"


# instance fields
.field private mOnItemClickListener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

.field private mVersionHistoryAdapter:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$1;-><init>(Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->mOnItemClickListener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v5, 0x7f0c0060

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->setContentView(I)V

    .line 46
    const v5, 0x7f0a03bc

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 48
    .local v2, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getVersionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 49
    .local v4, "versions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/whatsnew/model/Version;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 50
    new-instance v5, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    iget-object v6, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->mOnItemClickListener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

    invoke-direct {v5, p0, v4, v6}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;)V

    iput-object v5, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->mVersionHistoryAdapter:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    .line 55
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->mVersionHistoryAdapter:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    new-instance v1, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-direct {v1, p0, v7}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 57
    .local v1, "dividerItemDecoration":Landroid/support/v7/widget/DividerItemDecoration;
    const v5, 0x7f070539

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 59
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 61
    const v5, 0x7f0a0053

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 62
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v5, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$2;-><init>(Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v5, 0x7f0a04cc

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "title":Landroid/widget/TextView;
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void

    .line 52
    .end local v0    # "backButton":Landroid/widget/ImageButton;
    .end local v1    # "dividerItemDecoration":Landroid/support/v7/widget/DividerItemDecoration;
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 78
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getKnownVersionNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 79
    .local v0, "knownVersionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->mVersionHistoryAdapter:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->updateKnownVersion(Ljava/util/Set;)V

    .line 80
    return-void
.end method
