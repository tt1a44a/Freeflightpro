.class Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;
.super Ljava/lang/Object;
.source "ParrotUploaderTask.java"

# interfaces
.implements Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/ParrotUploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlfUploadComplete(Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 8
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 337
    const-string v3, "FF4.Updater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload complete: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v3}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$100(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    move-result-object v2

    .line 340
    .local v2, "progressResult":Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;
    sget-object v3, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;)V

    .line 341
    invoke-virtual {p2}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 342
    .local v0, "newResult":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v3}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$300(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v3}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$300(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v3, v4, :cond_0

    .line 343
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v3}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$400(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v4}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$500(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$600(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v1

    .line 344
    .local v1, "plfFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 345
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v3}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$400(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v4}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$300(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$700(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 348
    .end local v1    # "plfFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 349
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$800(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method
