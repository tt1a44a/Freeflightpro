.class Lcom/parrot/freeflight/update/UpdaterUiController$5;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;


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
    .line 185
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDroneResetProgressChange(F)V
    .locals 7
    .param p1, "progress"    # F

    .prologue
    .line 188
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, p1, v2

    add-float v0, v1, v2

    .line 189
    .local v0, "percentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v0, v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    .line 192
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.0f %%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/update/view/CircularSlider;->setDisplayValue(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onInstallProgressChange(F)V
    .locals 7
    .param p1, "progress"    # F

    .prologue
    .line 198
    const/high16 v1, 0x42960000    # 75.0f

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, p1, v2

    add-float v0, v1, v2

    .line 199
    .local v0, "percentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F

    .line 201
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v0, v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.0f %%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/update/view/CircularSlider;->setDisplayValue(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method
