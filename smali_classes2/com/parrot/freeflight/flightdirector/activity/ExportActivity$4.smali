.class Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->prepareExportVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "progress"    # F

    .prologue
    const/4 v2, 0x0

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->TAG:Ljava/lang/String;

    const-string v1, "Export started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;I)V

    goto :goto_0

    .line 126
    :pswitch_2
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->TAG:Ljava/lang/String;

    const-string v1, "Export canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->setResult(I)V

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->finish()V

    goto :goto_0

    .line 131
    :pswitch_3
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->TAG:Ljava/lang/String;

    const-string v1, "Export on error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->setResult(I)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_4
    sget-object v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->TAG:Ljava/lang/String;

    const-string v1, "Export success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->access$202(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;Z)Z

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->access$300(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V

    goto :goto_0

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    float-to-int v1, p2

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;I)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
