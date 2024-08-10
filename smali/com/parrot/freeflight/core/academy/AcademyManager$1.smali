.class Lcom/parrot/freeflight/core/academy/AcademyManager$1;
.super Landroid/os/Handler;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .line 141
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    .line 156
    :goto_0
    iget v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$300(Lcom/parrot/freeflight/core/academy/AcademyManager;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    .end local v0    # "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    :cond_0
    :goto_1
    return-void

    .line 136
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    goto :goto_1

    .line 145
    .restart local v0    # "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1

    .line 153
    :goto_2
    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$202(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    goto :goto_2

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method
