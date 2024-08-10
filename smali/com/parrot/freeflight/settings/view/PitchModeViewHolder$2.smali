.class Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;
.super Ljava/lang/Object;
.source "PitchModeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;Z)V

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->access$002(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;I)I

    .line 67
    :cond_0
    return-void
.end method
