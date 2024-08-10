.class Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$1;
.super Ljava/lang/Object;
.source "DroneFlyingButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$1;->this$0:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$1;->this$0:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->access$100(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$1;->this$0:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->access$000(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;

    .line 87
    .local v0, "command":Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;->execute()V

    .line 90
    :cond_0
    return-void
.end method
