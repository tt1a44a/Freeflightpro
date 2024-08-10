.class Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;
.super Landroid/os/AsyncTask;
.source "DroneConnectionInfoListSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DroneConnectionInfoListSortTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMergeSsid:Z

.field private final mSelectedDrone:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSortedList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSorterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;Ljava/lang/String;Ljava/util/List;ZLcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;)V
    .locals 1
    .param p1, "sorter"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "selectedDrone"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "mergeSsid"    # Z
    .param p6, "listener"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;Z",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    .local p4, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSorterRef:Ljava/lang/ref/WeakReference;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSortedList:Ljava/util/List;

    .line 83
    iput-object p6, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mListener:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;

    .line 84
    iput-object p3, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSelectedDrone:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mComparator:Ljava/util/Comparator;

    .line 86
    iput-boolean p5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mMergeSsid:Z

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;Ljava/lang/String;Ljava/util/List;ZLcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
    .param p2, "x1"    # Ljava/util/Comparator;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;
    .param p7, "x6"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$1;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;-><init>(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;Ljava/lang/String;Ljava/util/List;ZLcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 92
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v4, "mFoundInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, "activeInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    iget-object v5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSortedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 95
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 97
    .local v2, "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    move-object v0, v2

    .line 103
    :cond_3
    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 104
    .local v1, "alreadyFoundInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v5

    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    :cond_4
    invoke-virtual {v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    .end local v1    # "alreadyFoundInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .end local v2    # "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    :cond_5
    iget-boolean v5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mMergeSsid:Z

    if-eqz v5, :cond_6

    .line 111
    iget-object v5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSortedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 112
    iget-object v5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSortedList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_6
    iget-object v5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSortedList:Ljava/util/List;

    iget-object v6, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    .end local v0    # "activeInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    .end local v4    # "mFoundInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    :cond_7
    const/4 v5, 0x0

    return-object v5
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSorterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    .line 133
    .local v0, "sorter":Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->handleTaskComplete(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSorterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    .line 122
    .local v0, "sorter":Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->handleTaskComplete(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mListener:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mListener:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;

    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->mSortedList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;->onSortComplete(Ljava/util/List;)V

    .line 128
    :cond_1
    return-void
.end method
