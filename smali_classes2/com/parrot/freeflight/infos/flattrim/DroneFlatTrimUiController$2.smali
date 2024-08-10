.class Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$2;
.super Ljava/lang/Object;
.source "DroneFlatTrimUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->backButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$2;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$2;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$200(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 149
    return-void
.end method
