.class Lcom/parrot/freeflight/update/UpdaterUiController$4;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F

    .line 176
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$000(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController$State;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v1

    div-float v2, p1, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$000(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController$State;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p1, v1

    .line 180
    .local v0, "percentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v1

    div-float v2, v0, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    goto :goto_0
.end method
