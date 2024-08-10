.class public Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
.super Landroid/widget/LinearLayout;
.source "TimelineActionCell.java"


# instance fields
.field private final mIconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0c00c1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    const v1, 0x7f0a01d0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mIconImageView:Landroid/widget/ImageView;

    .line 35
    const v1, 0x7f0a042e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mNameTextView:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public refresh(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 2
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getValuesString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getMainColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->setBackgroundColor(I)V

    .line 53
    return-void
.end method
