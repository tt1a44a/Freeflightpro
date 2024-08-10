.class Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;
.super Ljava/lang/Object;
.source "RadioButtonSettingsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;, "Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;, "Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;"
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    .line 75
    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    .line 76
    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getCenterButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;Z)V

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getCenterButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->access$002(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;I)I

    .line 81
    :cond_0
    return-void
.end method
