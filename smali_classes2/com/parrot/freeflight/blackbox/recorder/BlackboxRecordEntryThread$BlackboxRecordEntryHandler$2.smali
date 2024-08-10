.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$2;
.super Ljava/lang/Object;
.source "BlackboxRecordEntryThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->notifyRecordEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;->onRecordEnded()V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)V

    .line 243
    return-void
.end method
