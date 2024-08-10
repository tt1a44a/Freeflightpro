.class public Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemOffsetDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
    }
.end annotation


# instance fields
.field private mItemOffset:I

.field private mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "itemOffset"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    sget-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    iput-object v0, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    .line 23
    iput p1, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mItemOffset:I

    .line 24
    return-void
.end method

.method public constructor <init>(ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V
    .locals 1
    .param p1, "itemOffset"    # I
    .param p2, "orientation"    # Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    sget-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    iput-object v0, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    .line 27
    iput p1, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mItemOffset:I

    .line 28
    iput-object p2, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemOffsetId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemOffsetId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "orientation"    # Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 42
    iget-object v4, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->HORIZONTAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v3

    .line 43
    .local v0, "horizontal":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->VERTICAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mOrientation:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    if-ne v4, v5, :cond_4

    :cond_1
    move v1, v3

    .line 44
    .local v1, "vertical":Z
    :goto_1
    if-eqz v0, :cond_5

    iget v3, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mItemOffset:I

    move v5, v3

    :goto_2
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mItemOffset:I

    move v4, v3

    :goto_3
    if-eqz v0, :cond_7

    iget v3, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mItemOffset:I

    :goto_4
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;->mItemOffset:I

    :cond_2
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    return-void

    .end local v0    # "horizontal":Z
    .end local v1    # "vertical":Z
    :cond_3
    move v0, v2

    .line 42
    goto :goto_0

    .restart local v0    # "horizontal":Z
    :cond_4
    move v1, v2

    .line 43
    goto :goto_1

    .restart local v1    # "vertical":Z
    :cond_5
    move v5, v2

    .line 44
    goto :goto_2

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4
.end method
