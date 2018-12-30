FROM centos:7

ENV TZ Asia/Tokyo

RUN yum -y update && \
    yum -y install git && \
    yum -y install openssl-devel && \
    yum -y install gcc && \
    yum -y install cronie

RUN git clone https://github.com/mnrn/my-home-hue.git mnrn/my-home-hue
WORKDIR /mnrn/my-home-hue

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH /root/.cargo/bin:$PATH
RUN cargo build --release

ADD cron.d /etc/cron.d
RUN chmod 0644 /etc/cron.d/*

CMD crond && tail -f /dev/null
