.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final HEX_CODES:[C

.field private static final SHIFTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/io/HexDump;->HEX_CODES:[C

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/io/HexDump;->SHIFTS:[I

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    return-void
.end method

.method private static dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "_cbuffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # B

    .line 207
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 208
    sget-object v1, Lorg/apache/commons/io/HexDump;->HEX_CODES:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->SHIFTS:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    shr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "j":I
    :cond_0
    return-object p0
.end method

.method private static dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "_lbuffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J

    .line 221
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 222
    sget-object v1, Lorg/apache/commons/io/HexDump;->HEX_CODES:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->SHIFTS:[I

    aget v2, v2, v0

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "j":I
    :cond_0
    return-object p0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 192
    const-string v0, "stream"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-static {p3}, Lorg/apache/commons/io/output/CloseShieldOutputStream;->wrap(Ljava/io/OutputStream;)Lorg/apache/commons/io/output/CloseShieldOutputStream;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 195
    .local v4, "out":Ljava/io/OutputStreamWriter;
    :try_start_0
    array-length v0, p0

    sub-int v6, v0, p4

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/io/HexDump;->dump([BJLjava/lang/Appendable;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 197
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    return-void

    .line 194
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method public static dump([BJLjava/lang/Appendable;II)V
    .locals 10
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "appendable"    # Ljava/lang/Appendable;
    .param p4, "index"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 112
    const-string v0, "appendable"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    if-ltz p4, :cond_7

    array-length v0, p0

    if-ge p4, v0, :cond_7

    .line 118
    int-to-long v0, p4

    add-long/2addr v0, p1

    .line 119
    .local v0, "display_offset":J
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 122
    .local v2, "buffer":Ljava/lang/StringBuilder;
    if-ltz p5, :cond_6

    add-int v3, p4, p5

    array-length v4, p0

    if-gt v3, v4, :cond_6

    .line 126
    add-int v3, p4, p5

    .line 128
    .local v3, "endIndex":I
    move v4, p4

    .local v4, "j":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 129
    sub-int v5, v3, v4

    .line 131
    .local v5, "chars_read":I
    const/16 v6, 0x10

    if-le v5, v6, :cond_0

    .line 132
    const/16 v5, 0x10

    .line 134
    :cond_0
    invoke-static {v2, v0, v1}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 136
    if-ge v7, v5, :cond_1

    .line 137
    add-int v9, v7, v4

    aget-byte v9, p0, v9

    invoke-static {v2, v9}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 139
    :cond_1
    const-string v9, "  "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 143
    .end local v7    # "k":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    if-ge v6, v5, :cond_4

    .line 144
    add-int v7, v6, v4

    aget-byte v7, p0, v7

    if-lt v7, v8, :cond_3

    add-int v7, v6, v4

    aget-byte v7, p0, v7

    const/16 v9, 0x7f

    if-ge v7, v9, :cond_3

    .line 145
    add-int v7, v6, v4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 147
    :cond_3
    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 150
    .end local v6    # "k":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {p3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 152
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 128
    .end local v5    # "chars_read":I
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 155
    .end local v4    # "j":I
    :cond_5
    return-void

    .line 123
    .end local v3    # "endIndex":I
    :cond_6
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Range [%s, %<s + %s) out of bounds for length %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    .end local v0    # "display_offset":J
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dump([BLjava/lang/Appendable;)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v4, 0x0

    array-length v5, p0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/HexDump;->dump([BJLjava/lang/Appendable;II)V

    .line 77
    return-void
.end method
