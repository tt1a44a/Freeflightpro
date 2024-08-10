.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;
.super Ljava/lang/Object;
.source "BlackboxRecordEntryThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->notifyRecordUpdated(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

.field final synthetic val$recordEntry:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;->val$recordEntry:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;->val$recordEntry:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;->onRecordUpdated(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V

    .line 233
    return-void
.end method
