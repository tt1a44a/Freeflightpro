.class Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;
.super Ljava/lang/Object;
.source "CirclingDirectionViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;)Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;Z)V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;)Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;->access$002(Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;I)I

    .line 56
    :cond_0
    return-void
.end method
