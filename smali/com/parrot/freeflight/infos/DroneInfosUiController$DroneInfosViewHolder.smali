.class Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DroneInfosUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DroneInfosViewHolder"
.end annotation


# instance fields
.field final mTitleView:Landroid/widget/TextView;

.field final mValueView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 679
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .line 680
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 681
    const v0, 0x7f0a012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 682
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->mValueView:Landroid/widget/TextView;

    .line 684
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 685
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->mValueView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 686
    return-void
.end method


# virtual methods
.method populateTextView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->mValueView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    return-void
.end method
