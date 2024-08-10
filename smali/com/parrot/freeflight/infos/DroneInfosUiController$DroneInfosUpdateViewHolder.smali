.class Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;
.super Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
.source "DroneInfosUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DroneInfosUpdateViewHolder"
.end annotation


# instance fields
.field final mRoundedCornerLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

.field final mUpdateLayout:Landroid/widget/RelativeLayout;

.field final mUpdateTextView:Landroid/widget/TextView;

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
    .line 699
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .line 700
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Landroid/view/View;)V

    .line 701
    const v0, 0x7f0a012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mRoundedCornerLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 702
    const v0, 0x7f0a012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateLayout:Landroid/widget/RelativeLayout;

    .line 703
    const v0, 0x7f0a012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateTextView:Landroid/widget/TextView;

    .line 705
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 713
    return-void
.end method


# virtual methods
.method checkUpdate(ZZLjava/lang/String;)V
    .locals 7
    .param p1, "needUpdate"    # Z
    .param p2, "mandatoryUpdate"    # Z
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 718
    if-eqz p1, :cond_4

    .line 719
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mRoundedCornerLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 720
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    if-eqz p2, :cond_0

    const v0, 0x7f0500b5

    .line 723
    .local v0, "backgroundColor":I
    :goto_0
    if-eqz p2, :cond_1

    const v2, 0x7f050103

    .line 724
    .local v2, "textColor":I
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v4}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    if-eqz p2, :cond_2

    const v4, 0x7f0703cb

    :goto_2
    invoke-static {v6, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 728
    .local v1, "downloadIcon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v4}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0703bf

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 730
    .local v3, "updateStateIcon":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 731
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 738
    .end local v0    # "backgroundColor":I
    .end local v1    # "downloadIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "textColor":I
    :goto_4
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mValueView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 739
    return-void

    .line 722
    .end local v3    # "updateStateIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x7f05012e

    goto :goto_0

    .line 723
    .restart local v0    # "backgroundColor":I
    :cond_1
    const v2, 0x7f0500a3

    goto :goto_1

    .line 724
    .restart local v2    # "textColor":I
    :cond_2
    const v4, 0x7f0703d6

    goto :goto_2

    .restart local v1    # "downloadIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v3, v5

    .line 728
    goto :goto_3

    .line 734
    .end local v0    # "backgroundColor":I
    .end local v1    # "downloadIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "textColor":I
    :cond_4
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->mRoundedCornerLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 735
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v4}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0703b7

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "updateStateIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_4
.end method
