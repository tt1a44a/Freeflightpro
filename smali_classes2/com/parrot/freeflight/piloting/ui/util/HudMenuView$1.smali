.class Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;
.super Ljava/lang/Object;
.source "HudMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-boolean v1, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuOpen:Z

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-boolean v2, v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuOpen:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuOpen:Z

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-boolean v2, v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuOpen:Z

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;->onMenuStateChanged(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Z)V

    .line 104
    :cond_1
    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->access$000(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;)V

    goto :goto_0
.end method
