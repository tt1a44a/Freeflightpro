.class Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;
.super Ljava/lang/Object;
.source "HudMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

.field final synthetic val$item:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->val$item:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mOnItemClickListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mOnItemClickListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->val$item:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mValue:I

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;->onItemClick(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->val$item:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mValue:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->updateMenuButton(I)V

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->closeMenu()V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->access$100(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Landroid/view/View;I)V

    .line 171
    return-void
.end method
