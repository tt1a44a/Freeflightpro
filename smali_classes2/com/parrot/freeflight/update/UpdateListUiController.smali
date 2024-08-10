.class public Lcom/parrot/freeflight/update/UpdateListUiController;
.super Ljava/lang/Object;
.source "UpdateListUiController.java"


# instance fields
.field private final mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNbProductsTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNbUpdatesTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUpdateListAdapter:Lcom/parrot/freeflight/update/UpdateListAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "updateListController"    # Lcom/parrot/freeflight/update/view/UpdateListController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "onBackButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Lcom/parrot/freeflight/update/UpdateListUiController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdateListUiController$1;-><init>(Lcom/parrot/freeflight/update/UpdateListUiController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    .line 56
    const v2, 0x7f0a0053

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mBackButton:Landroid/widget/ImageButton;

    .line 57
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mBackButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/update/UpdateListUiController$2;

    invoke-direct {v3, p0, p4}, Lcom/parrot/freeflight/update/UpdateListUiController$2;-><init>(Lcom/parrot/freeflight/update/UpdateListUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0a04db

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mNbProductsTextView:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0a04dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mNbUpdatesTextView:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0a04c8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, "titleTextView":Landroid/widget/TextView;
    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mNbProductsTextView:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mNbUpdatesTextView:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    const v2, 0x7f0a03bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 75
    .local v1, "updateListRecyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 76
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    new-instance v2, Lcom/parrot/freeflight/update/UpdateListAdapter;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/update/view/UpdateListController;->getUserProducts()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/parrot/freeflight/update/UpdateListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListAdapter:Lcom/parrot/freeflight/update/UpdateListAdapter;

    .line 79
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListAdapter:Lcom/parrot/freeflight/update/UpdateListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdateListUiController;->fixPreLollipopTheme()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/UpdateListUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdateListUiController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdateListUiController;->displayUpdateList()V

    return-void
.end method

.method private displayUpdateList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 93
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/view/UpdateListController;->getUserProducts()Ljava/util/List;

    move-result-object v3

    .line 94
    .local v3, "userProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 95
    .local v0, "nbProducts":I
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/view/UpdateListController;->getNbProductsToUpdate()I

    move-result v1

    .line 96
    .local v1, "nbProductsToUpdate":I
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mNbProductsTextView:Landroid/widget/TextView;

    const v5, 0x7f0f000a

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v5, v0, v6}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mNbUpdatesTextView:Landroid/widget/TextView;

    const v5, 0x7f0f0009

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v5, v1, v6}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListAdapter:Lcom/parrot/freeflight/update/UpdateListAdapter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/UpdateListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->setOnListUpdatedListener(Lcom/parrot/freeflight/update/view/UpdateListController$Listener;)V

    .line 90
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListUiController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->setOnListUpdatedListener(Lcom/parrot/freeflight/update/view/UpdateListController$Listener;)V

    .line 86
    return-void
.end method
