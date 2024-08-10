.class Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->shareVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/high16 v3, 0x80000

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 182
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void

    .line 185
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
